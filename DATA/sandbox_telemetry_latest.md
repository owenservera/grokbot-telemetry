# sandbox_telemetry_parse — 2026-10-16 12:50:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=459411 lines=1717
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1132 |
| `memory_sample` | 576 |
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
| `chromeBrowserPssKb` | {'int': 576} |
| `chromeGpuPssKb` | {'int': 576} |
| `chromeOtherPssKb` | {'int': 576} |
| `chromeProcesses` | {'int': 576} |
| `chromeProfiles` | {'int': 576} |
| `chromeRendererMaxPssKb` | {'int': 576} |
| `chromeRendererPssKb` | {'int': 576} |
| `chromeRenderers` | {'int': 576} |
| `chromeTabs` | {'int': 576} |
| `chromeTabsProbedProfiles` | {'int': 576} |
| `chromeUtilityPssKb` | {'int': 576} |
| `desktopPssKb` | {'int': 576} |
| `hostPssKb` | {'int': 576} |
| `kind` | {'str': 576} |
| `memAvailableKb` | {'int': 576} |
| `memTotalKb` | {'int': 576} |
| `otherPssKb` | {'int': 576} |
| `processes` | {'int': 576} |
| `pssFallbackProcesses` | {'int': 576} |

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
| `cpuMillicores` | {'int': 1129} |
| `display` | {'int': 1132} |
| `kind` | {'str': 1132} |
| `processes` | {'int': 1132} |
| `pssKb` | {'int': 1132} |
| `rendererMaxPssKb` | {'int': 1132} |
| `renderers` | {'int': 1132} |
| `tabs` | {'int': 1131} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
