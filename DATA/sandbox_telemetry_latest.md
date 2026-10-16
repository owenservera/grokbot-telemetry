# sandbox_telemetry_parse — 2026-10-16 09:22:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=314174 lines=1174
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 770 |
| `memory_sample` | 395 |
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
| `chromeBrowserPssKb` | {'int': 395} |
| `chromeGpuPssKb` | {'int': 395} |
| `chromeOtherPssKb` | {'int': 395} |
| `chromeProcesses` | {'int': 395} |
| `chromeProfiles` | {'int': 395} |
| `chromeRendererMaxPssKb` | {'int': 395} |
| `chromeRendererPssKb` | {'int': 395} |
| `chromeRenderers` | {'int': 395} |
| `chromeTabs` | {'int': 395} |
| `chromeTabsProbedProfiles` | {'int': 395} |
| `chromeUtilityPssKb` | {'int': 395} |
| `desktopPssKb` | {'int': 395} |
| `hostPssKb` | {'int': 395} |
| `kind` | {'str': 395} |
| `memAvailableKb` | {'int': 395} |
| `memTotalKb` | {'int': 395} |
| `otherPssKb` | {'int': 395} |
| `processes` | {'int': 395} |
| `pssFallbackProcesses` | {'int': 395} |

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
| `cpuMillicores` | {'int': 767} |
| `display` | {'int': 770} |
| `kind` | {'str': 770} |
| `processes` | {'int': 770} |
| `pssKb` | {'int': 770} |
| `rendererMaxPssKb` | {'int': 770} |
| `renderers` | {'int': 770} |
| `tabs` | {'int': 769} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
