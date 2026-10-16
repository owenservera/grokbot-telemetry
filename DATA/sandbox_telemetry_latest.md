# sandbox_telemetry_parse — 2026-10-16 13:29:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=487508 lines=1822
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1202 |
| `memory_sample` | 611 |
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
| `chromeBrowserPssKb` | {'int': 611} |
| `chromeGpuPssKb` | {'int': 611} |
| `chromeOtherPssKb` | {'int': 611} |
| `chromeProcesses` | {'int': 611} |
| `chromeProfiles` | {'int': 611} |
| `chromeRendererMaxPssKb` | {'int': 611} |
| `chromeRendererPssKb` | {'int': 611} |
| `chromeRenderers` | {'int': 611} |
| `chromeTabs` | {'int': 611} |
| `chromeTabsProbedProfiles` | {'int': 611} |
| `chromeUtilityPssKb` | {'int': 611} |
| `desktopPssKb` | {'int': 611} |
| `hostPssKb` | {'int': 611} |
| `kind` | {'str': 611} |
| `memAvailableKb` | {'int': 611} |
| `memTotalKb` | {'int': 611} |
| `otherPssKb` | {'int': 611} |
| `processes` | {'int': 611} |
| `pssFallbackProcesses` | {'int': 611} |

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
| `cpuMillicores` | {'int': 1199} |
| `display` | {'int': 1202} |
| `kind` | {'str': 1202} |
| `processes` | {'int': 1202} |
| `pssKb` | {'int': 1202} |
| `rendererMaxPssKb` | {'int': 1202} |
| `renderers` | {'int': 1202} |
| `tabs` | {'int': 1201} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
