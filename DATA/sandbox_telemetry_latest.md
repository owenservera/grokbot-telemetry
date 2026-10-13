# sandbox_telemetry_parse — 2026-10-13 21:55:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1243107 lines=3263
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2397 |
| `chrome_profile_sample` | 858 |
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
| `chromeBrowserPssKb` | {'int': 2397} |
| `chromeGpuPssKb` | {'int': 2397} |
| `chromeOtherPssKb` | {'int': 2397} |
| `chromeProcesses` | {'int': 2397} |
| `chromeProfiles` | {'int': 2397} |
| `chromeRendererMaxPssKb` | {'int': 2397} |
| `chromeRendererPssKb` | {'int': 2397} |
| `chromeRenderers` | {'int': 2397} |
| `chromeTabs` | {'int': 2397} |
| `chromeTabsProbedProfiles` | {'int': 2397} |
| `chromeUtilityPssKb` | {'int': 2397} |
| `desktopPssKb` | {'int': 2397} |
| `hostPssKb` | {'int': 2397} |
| `kind` | {'str': 2397} |
| `memAvailableKb` | {'int': 2397} |
| `memTotalKb` | {'int': 2397} |
| `otherPssKb` | {'int': 2397} |
| `processes` | {'int': 2397} |
| `pssFallbackProcesses` | {'int': 2397} |

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
| `cpuMillicores` | {'int': 857} |
| `display` | {'int': 858} |
| `kind` | {'str': 858} |
| `processes` | {'int': 858} |
| `pssKb` | {'int': 858} |
| `rendererMaxPssKb` | {'int': 858} |
| `renderers` | {'int': 858} |
| `tabs` | {'int': 858} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
