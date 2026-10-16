# sandbox_telemetry_parse — 2026-10-16 08:37:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=286067 lines=1069
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 700 |
| `memory_sample` | 360 |
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
| `chromeBrowserPssKb` | {'int': 360} |
| `chromeGpuPssKb` | {'int': 360} |
| `chromeOtherPssKb` | {'int': 360} |
| `chromeProcesses` | {'int': 360} |
| `chromeProfiles` | {'int': 360} |
| `chromeRendererMaxPssKb` | {'int': 360} |
| `chromeRendererPssKb` | {'int': 360} |
| `chromeRenderers` | {'int': 360} |
| `chromeTabs` | {'int': 360} |
| `chromeTabsProbedProfiles` | {'int': 360} |
| `chromeUtilityPssKb` | {'int': 360} |
| `desktopPssKb` | {'int': 360} |
| `hostPssKb` | {'int': 360} |
| `kind` | {'str': 360} |
| `memAvailableKb` | {'int': 360} |
| `memTotalKb` | {'int': 360} |
| `otherPssKb` | {'int': 360} |
| `processes` | {'int': 360} |
| `pssFallbackProcesses` | {'int': 360} |

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
| `cpuMillicores` | {'int': 697} |
| `display` | {'int': 700} |
| `kind` | {'str': 700} |
| `processes` | {'int': 700} |
| `pssKb` | {'int': 700} |
| `rendererMaxPssKb` | {'int': 700} |
| `renderers` | {'int': 700} |
| `tabs` | {'int': 699} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
