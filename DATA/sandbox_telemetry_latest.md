# sandbox_telemetry_parse — 2026-10-16 18:10:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=705018 lines=2635
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1744 |
| `memory_sample` | 882 |
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
| `chromeBrowserPssKb` | {'int': 882} |
| `chromeGpuPssKb` | {'int': 882} |
| `chromeOtherPssKb` | {'int': 882} |
| `chromeProcesses` | {'int': 882} |
| `chromeProfiles` | {'int': 882} |
| `chromeRendererMaxPssKb` | {'int': 882} |
| `chromeRendererPssKb` | {'int': 882} |
| `chromeRenderers` | {'int': 882} |
| `chromeTabs` | {'int': 882} |
| `chromeTabsProbedProfiles` | {'int': 882} |
| `chromeUtilityPssKb` | {'int': 882} |
| `desktopPssKb` | {'int': 882} |
| `hostPssKb` | {'int': 882} |
| `kind` | {'str': 882} |
| `memAvailableKb` | {'int': 882} |
| `memTotalKb` | {'int': 882} |
| `otherPssKb` | {'int': 882} |
| `processes` | {'int': 882} |
| `pssFallbackProcesses` | {'int': 882} |

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
| `cpuMillicores` | {'int': 1741} |
| `display` | {'int': 1744} |
| `kind` | {'str': 1744} |
| `processes` | {'int': 1744} |
| `pssKb` | {'int': 1744} |
| `rendererMaxPssKb` | {'int': 1744} |
| `renderers` | {'int': 1744} |
| `tabs` | {'int': 1743} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
