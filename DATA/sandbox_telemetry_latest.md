# sandbox_telemetry_parse — 2026-10-16 06:46:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=201004 lines=751
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 488 |
| `memory_sample` | 254 |
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
| `chromeBrowserPssKb` | {'int': 254} |
| `chromeGpuPssKb` | {'int': 254} |
| `chromeOtherPssKb` | {'int': 254} |
| `chromeProcesses` | {'int': 254} |
| `chromeProfiles` | {'int': 254} |
| `chromeRendererMaxPssKb` | {'int': 254} |
| `chromeRendererPssKb` | {'int': 254} |
| `chromeRenderers` | {'int': 254} |
| `chromeTabs` | {'int': 254} |
| `chromeTabsProbedProfiles` | {'int': 254} |
| `chromeUtilityPssKb` | {'int': 254} |
| `desktopPssKb` | {'int': 254} |
| `hostPssKb` | {'int': 254} |
| `kind` | {'str': 254} |
| `memAvailableKb` | {'int': 254} |
| `memTotalKb` | {'int': 254} |
| `otherPssKb` | {'int': 254} |
| `processes` | {'int': 254} |
| `pssFallbackProcesses` | {'int': 254} |

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
| `cpuMillicores` | {'int': 485} |
| `display` | {'int': 488} |
| `kind` | {'str': 488} |
| `processes` | {'int': 488} |
| `pssKb` | {'int': 488} |
| `rendererMaxPssKb` | {'int': 488} |
| `renderers` | {'int': 488} |
| `tabs` | {'int': 487} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
