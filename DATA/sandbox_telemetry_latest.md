# sandbox_telemetry_parse — 2026-10-13 11:05:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1031771 lines=2601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2066 |
| `chrome_profile_sample` | 527 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2066} |
| `chromeGpuPssKb` | {'int': 2066} |
| `chromeOtherPssKb` | {'int': 2066} |
| `chromeProcesses` | {'int': 2066} |
| `chromeProfiles` | {'int': 2066} |
| `chromeRendererMaxPssKb` | {'int': 2066} |
| `chromeRendererPssKb` | {'int': 2066} |
| `chromeRenderers` | {'int': 2066} |
| `chromeTabs` | {'int': 2066} |
| `chromeTabsProbedProfiles` | {'int': 2066} |
| `chromeUtilityPssKb` | {'int': 2066} |
| `desktopPssKb` | {'int': 2066} |
| `hostPssKb` | {'int': 2066} |
| `kind` | {'str': 2066} |
| `memAvailableKb` | {'int': 2066} |
| `memTotalKb` | {'int': 2066} |
| `otherPssKb` | {'int': 2066} |
| `processes` | {'int': 2066} |
| `pssFallbackProcesses` | {'int': 2066} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 526} |
| `display` | {'int': 527} |
| `kind` | {'str': 527} |
| `processes` | {'int': 527} |
| `pssKb` | {'int': 527} |
| `rendererMaxPssKb` | {'int': 527} |
| `renderers` | {'int': 527} |
| `tabs` | {'int': 527} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
