# sandbox_telemetry_parse — 2026-10-16 09:45:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=331037 lines=1237
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 812 |
| `memory_sample` | 416 |
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
| `chromeBrowserPssKb` | {'int': 416} |
| `chromeGpuPssKb` | {'int': 416} |
| `chromeOtherPssKb` | {'int': 416} |
| `chromeProcesses` | {'int': 416} |
| `chromeProfiles` | {'int': 416} |
| `chromeRendererMaxPssKb` | {'int': 416} |
| `chromeRendererPssKb` | {'int': 416} |
| `chromeRenderers` | {'int': 416} |
| `chromeTabs` | {'int': 416} |
| `chromeTabsProbedProfiles` | {'int': 416} |
| `chromeUtilityPssKb` | {'int': 416} |
| `desktopPssKb` | {'int': 416} |
| `hostPssKb` | {'int': 416} |
| `kind` | {'str': 416} |
| `memAvailableKb` | {'int': 416} |
| `memTotalKb` | {'int': 416} |
| `otherPssKb` | {'int': 416} |
| `processes` | {'int': 416} |
| `pssFallbackProcesses` | {'int': 416} |

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
| `cpuMillicores` | {'int': 809} |
| `display` | {'int': 812} |
| `kind` | {'str': 812} |
| `processes` | {'int': 812} |
| `pssKb` | {'int': 812} |
| `rendererMaxPssKb` | {'int': 812} |
| `renderers` | {'int': 812} |
| `tabs` | {'int': 811} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
