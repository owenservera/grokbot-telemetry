# sandbox_telemetry_parse — 2026-10-16 15:48:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=594250 lines=2221
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1468 |
| `memory_sample` | 744 |
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
| `chromeBrowserPssKb` | {'int': 744} |
| `chromeGpuPssKb` | {'int': 744} |
| `chromeOtherPssKb` | {'int': 744} |
| `chromeProcesses` | {'int': 744} |
| `chromeProfiles` | {'int': 744} |
| `chromeRendererMaxPssKb` | {'int': 744} |
| `chromeRendererPssKb` | {'int': 744} |
| `chromeRenderers` | {'int': 744} |
| `chromeTabs` | {'int': 744} |
| `chromeTabsProbedProfiles` | {'int': 744} |
| `chromeUtilityPssKb` | {'int': 744} |
| `desktopPssKb` | {'int': 744} |
| `hostPssKb` | {'int': 744} |
| `kind` | {'str': 744} |
| `memAvailableKb` | {'int': 744} |
| `memTotalKb` | {'int': 744} |
| `otherPssKb` | {'int': 744} |
| `processes` | {'int': 744} |
| `pssFallbackProcesses` | {'int': 744} |

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
| `cpuMillicores` | {'int': 1465} |
| `display` | {'int': 1468} |
| `kind` | {'str': 1468} |
| `processes` | {'int': 1468} |
| `pssKb` | {'int': 1468} |
| `rendererMaxPssKb` | {'int': 1468} |
| `renderers` | {'int': 1468} |
| `tabs` | {'int': 1467} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
