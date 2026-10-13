# sandbox_telemetry_parse — 2026-10-13 20:27:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1214364 lines=3173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2352 |
| `chrome_profile_sample` | 813 |
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
| `chromeBrowserPssKb` | {'int': 2352} |
| `chromeGpuPssKb` | {'int': 2352} |
| `chromeOtherPssKb` | {'int': 2352} |
| `chromeProcesses` | {'int': 2352} |
| `chromeProfiles` | {'int': 2352} |
| `chromeRendererMaxPssKb` | {'int': 2352} |
| `chromeRendererPssKb` | {'int': 2352} |
| `chromeRenderers` | {'int': 2352} |
| `chromeTabs` | {'int': 2352} |
| `chromeTabsProbedProfiles` | {'int': 2352} |
| `chromeUtilityPssKb` | {'int': 2352} |
| `desktopPssKb` | {'int': 2352} |
| `hostPssKb` | {'int': 2352} |
| `kind` | {'str': 2352} |
| `memAvailableKb` | {'int': 2352} |
| `memTotalKb` | {'int': 2352} |
| `otherPssKb` | {'int': 2352} |
| `processes` | {'int': 2352} |
| `pssFallbackProcesses` | {'int': 2352} |

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
| `cpuMillicores` | {'int': 812} |
| `display` | {'int': 813} |
| `kind` | {'str': 813} |
| `processes` | {'int': 813} |
| `pssKb` | {'int': 813} |
| `rendererMaxPssKb` | {'int': 813} |
| `renderers` | {'int': 813} |
| `tabs` | {'int': 813} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
