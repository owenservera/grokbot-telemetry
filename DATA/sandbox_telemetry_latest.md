# sandbox_telemetry_parse — 2026-10-16 21:32:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=847954 lines=3169
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2100 |
| `memory_sample` | 1060 |
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
| `chromeBrowserPssKb` | {'int': 1060} |
| `chromeGpuPssKb` | {'int': 1060} |
| `chromeOtherPssKb` | {'int': 1060} |
| `chromeProcesses` | {'int': 1060} |
| `chromeProfiles` | {'int': 1060} |
| `chromeRendererMaxPssKb` | {'int': 1060} |
| `chromeRendererPssKb` | {'int': 1060} |
| `chromeRenderers` | {'int': 1060} |
| `chromeTabs` | {'int': 1060} |
| `chromeTabsProbedProfiles` | {'int': 1060} |
| `chromeUtilityPssKb` | {'int': 1060} |
| `desktopPssKb` | {'int': 1060} |
| `hostPssKb` | {'int': 1060} |
| `kind` | {'str': 1060} |
| `memAvailableKb` | {'int': 1060} |
| `memTotalKb` | {'int': 1060} |
| `otherPssKb` | {'int': 1060} |
| `processes` | {'int': 1060} |
| `pssFallbackProcesses` | {'int': 1060} |

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
| `cpuMillicores` | {'int': 2097} |
| `display` | {'int': 2100} |
| `kind` | {'str': 2100} |
| `processes` | {'int': 2100} |
| `pssKb` | {'int': 2100} |
| `rendererMaxPssKb` | {'int': 2100} |
| `renderers` | {'int': 2100} |
| `tabs` | {'int': 2099} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
