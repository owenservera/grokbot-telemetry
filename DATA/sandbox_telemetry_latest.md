# sandbox_telemetry_parse — 2026-10-13 23:26:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1292258 lines=3417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2474 |
| `chrome_profile_sample` | 935 |
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
| `chromeBrowserPssKb` | {'int': 2474} |
| `chromeGpuPssKb` | {'int': 2474} |
| `chromeOtherPssKb` | {'int': 2474} |
| `chromeProcesses` | {'int': 2474} |
| `chromeProfiles` | {'int': 2474} |
| `chromeRendererMaxPssKb` | {'int': 2474} |
| `chromeRendererPssKb` | {'int': 2474} |
| `chromeRenderers` | {'int': 2474} |
| `chromeTabs` | {'int': 2474} |
| `chromeTabsProbedProfiles` | {'int': 2474} |
| `chromeUtilityPssKb` | {'int': 2474} |
| `desktopPssKb` | {'int': 2474} |
| `hostPssKb` | {'int': 2474} |
| `kind` | {'str': 2474} |
| `memAvailableKb` | {'int': 2474} |
| `memTotalKb` | {'int': 2474} |
| `otherPssKb` | {'int': 2474} |
| `processes` | {'int': 2474} |
| `pssFallbackProcesses` | {'int': 2474} |

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
| `cpuMillicores` | {'int': 934} |
| `display` | {'int': 935} |
| `kind` | {'str': 935} |
| `processes` | {'int': 935} |
| `pssKb` | {'int': 935} |
| `rendererMaxPssKb` | {'int': 935} |
| `renderers` | {'int': 935} |
| `tabs` | {'int': 935} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
