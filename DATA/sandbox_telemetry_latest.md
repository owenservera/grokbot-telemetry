# sandbox_telemetry_parse — 2026-10-16 11:52:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=419276 lines=1567
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1032 |
| `memory_sample` | 526 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 526} |
| `chromeGpuPssKb` | {'int': 526} |
| `chromeOtherPssKb` | {'int': 526} |
| `chromeProcesses` | {'int': 526} |
| `chromeProfiles` | {'int': 526} |
| `chromeRendererMaxPssKb` | {'int': 526} |
| `chromeRendererPssKb` | {'int': 526} |
| `chromeRenderers` | {'int': 526} |
| `chromeTabs` | {'int': 526} |
| `chromeTabsProbedProfiles` | {'int': 526} |
| `chromeUtilityPssKb` | {'int': 526} |
| `desktopPssKb` | {'int': 526} |
| `hostPssKb` | {'int': 526} |
| `kind` | {'str': 526} |
| `memAvailableKb` | {'int': 526} |
| `memTotalKb` | {'int': 526} |
| `otherPssKb` | {'int': 526} |
| `processes` | {'int': 526} |
| `pssFallbackProcesses` | {'int': 526} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1029} |
| `display` | {'int': 1032} |
| `kind` | {'str': 1032} |
| `processes` | {'int': 1032} |
| `pssKb` | {'int': 1032} |
| `rendererMaxPssKb` | {'int': 1032} |
| `renderers` | {'int': 1032} |
| `tabs` | {'int': 1031} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
