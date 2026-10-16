# sandbox_telemetry_parse — 2026-10-16 19:23:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=758816 lines=2836
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1878 |
| `memory_sample` | 949 |
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
| `chromeBrowserPssKb` | {'int': 949} |
| `chromeGpuPssKb` | {'int': 949} |
| `chromeOtherPssKb` | {'int': 949} |
| `chromeProcesses` | {'int': 949} |
| `chromeProfiles` | {'int': 949} |
| `chromeRendererMaxPssKb` | {'int': 949} |
| `chromeRendererPssKb` | {'int': 949} |
| `chromeRenderers` | {'int': 949} |
| `chromeTabs` | {'int': 949} |
| `chromeTabsProbedProfiles` | {'int': 949} |
| `chromeUtilityPssKb` | {'int': 949} |
| `desktopPssKb` | {'int': 949} |
| `hostPssKb` | {'int': 949} |
| `kind` | {'str': 949} |
| `memAvailableKb` | {'int': 949} |
| `memTotalKb` | {'int': 949} |
| `otherPssKb` | {'int': 949} |
| `processes` | {'int': 949} |
| `pssFallbackProcesses` | {'int': 949} |

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
| `cpuMillicores` | {'int': 1875} |
| `display` | {'int': 1878} |
| `kind` | {'str': 1878} |
| `processes` | {'int': 1878} |
| `pssKb` | {'int': 1878} |
| `rendererMaxPssKb` | {'int': 1878} |
| `renderers` | {'int': 1878} |
| `tabs` | {'int': 1877} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
