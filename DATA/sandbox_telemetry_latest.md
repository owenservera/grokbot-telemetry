# sandbox_telemetry_parse — 2026-10-16 10:13:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=349506 lines=1306
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 858 |
| `memory_sample` | 439 |
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
| `chromeBrowserPssKb` | {'int': 439} |
| `chromeGpuPssKb` | {'int': 439} |
| `chromeOtherPssKb` | {'int': 439} |
| `chromeProcesses` | {'int': 439} |
| `chromeProfiles` | {'int': 439} |
| `chromeRendererMaxPssKb` | {'int': 439} |
| `chromeRendererPssKb` | {'int': 439} |
| `chromeRenderers` | {'int': 439} |
| `chromeTabs` | {'int': 439} |
| `chromeTabsProbedProfiles` | {'int': 439} |
| `chromeUtilityPssKb` | {'int': 439} |
| `desktopPssKb` | {'int': 439} |
| `hostPssKb` | {'int': 439} |
| `kind` | {'str': 439} |
| `memAvailableKb` | {'int': 439} |
| `memTotalKb` | {'int': 439} |
| `otherPssKb` | {'int': 439} |
| `processes` | {'int': 439} |
| `pssFallbackProcesses` | {'int': 439} |

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
| `cpuMillicores` | {'int': 855} |
| `display` | {'int': 858} |
| `kind` | {'str': 858} |
| `processes` | {'int': 858} |
| `pssKb` | {'int': 858} |
| `rendererMaxPssKb` | {'int': 858} |
| `renderers` | {'int': 858} |
| `tabs` | {'int': 857} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
