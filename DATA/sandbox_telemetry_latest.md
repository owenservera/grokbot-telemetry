# sandbox_telemetry_parse — 2026-10-13 22:18:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1256515 lines=3305
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2418 |
| `chrome_profile_sample` | 879 |
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
| `chromeBrowserPssKb` | {'int': 2418} |
| `chromeGpuPssKb` | {'int': 2418} |
| `chromeOtherPssKb` | {'int': 2418} |
| `chromeProcesses` | {'int': 2418} |
| `chromeProfiles` | {'int': 2418} |
| `chromeRendererMaxPssKb` | {'int': 2418} |
| `chromeRendererPssKb` | {'int': 2418} |
| `chromeRenderers` | {'int': 2418} |
| `chromeTabs` | {'int': 2418} |
| `chromeTabsProbedProfiles` | {'int': 2418} |
| `chromeUtilityPssKb` | {'int': 2418} |
| `desktopPssKb` | {'int': 2418} |
| `hostPssKb` | {'int': 2418} |
| `kind` | {'str': 2418} |
| `memAvailableKb` | {'int': 2418} |
| `memTotalKb` | {'int': 2418} |
| `otherPssKb` | {'int': 2418} |
| `processes` | {'int': 2418} |
| `pssFallbackProcesses` | {'int': 2418} |

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
| `cpuMillicores` | {'int': 878} |
| `display` | {'int': 879} |
| `kind` | {'str': 879} |
| `processes` | {'int': 879} |
| `pssKb` | {'int': 879} |
| `rendererMaxPssKb` | {'int': 879} |
| `renderers` | {'int': 879} |
| `tabs` | {'int': 879} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
