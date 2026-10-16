# sandbox_telemetry_parse — 2026-10-16 11:12:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=390410 lines=1459
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 960 |
| `memory_sample` | 490 |
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
| `chromeBrowserPssKb` | {'int': 490} |
| `chromeGpuPssKb` | {'int': 490} |
| `chromeOtherPssKb` | {'int': 490} |
| `chromeProcesses` | {'int': 490} |
| `chromeProfiles` | {'int': 490} |
| `chromeRendererMaxPssKb` | {'int': 490} |
| `chromeRendererPssKb` | {'int': 490} |
| `chromeRenderers` | {'int': 490} |
| `chromeTabs` | {'int': 490} |
| `chromeTabsProbedProfiles` | {'int': 490} |
| `chromeUtilityPssKb` | {'int': 490} |
| `desktopPssKb` | {'int': 490} |
| `hostPssKb` | {'int': 490} |
| `kind` | {'str': 490} |
| `memAvailableKb` | {'int': 490} |
| `memTotalKb` | {'int': 490} |
| `otherPssKb` | {'int': 490} |
| `processes` | {'int': 490} |
| `pssFallbackProcesses` | {'int': 490} |

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
| `cpuMillicores` | {'int': 957} |
| `display` | {'int': 960} |
| `kind` | {'str': 960} |
| `processes` | {'int': 960} |
| `pssKb` | {'int': 960} |
| `rendererMaxPssKb` | {'int': 960} |
| `renderers` | {'int': 960} |
| `tabs` | {'int': 959} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
