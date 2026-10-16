# sandbox_telemetry_parse — 2026-10-16 13:55:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=506774 lines=1894
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1250 |
| `memory_sample` | 635 |
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
| `chromeBrowserPssKb` | {'int': 635} |
| `chromeGpuPssKb` | {'int': 635} |
| `chromeOtherPssKb` | {'int': 635} |
| `chromeProcesses` | {'int': 635} |
| `chromeProfiles` | {'int': 635} |
| `chromeRendererMaxPssKb` | {'int': 635} |
| `chromeRendererPssKb` | {'int': 635} |
| `chromeRenderers` | {'int': 635} |
| `chromeTabs` | {'int': 635} |
| `chromeTabsProbedProfiles` | {'int': 635} |
| `chromeUtilityPssKb` | {'int': 635} |
| `desktopPssKb` | {'int': 635} |
| `hostPssKb` | {'int': 635} |
| `kind` | {'str': 635} |
| `memAvailableKb` | {'int': 635} |
| `memTotalKb` | {'int': 635} |
| `otherPssKb` | {'int': 635} |
| `processes` | {'int': 635} |
| `pssFallbackProcesses` | {'int': 635} |

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
| `cpuMillicores` | {'int': 1247} |
| `display` | {'int': 1250} |
| `kind` | {'str': 1250} |
| `processes` | {'int': 1250} |
| `pssKb` | {'int': 1250} |
| `rendererMaxPssKb` | {'int': 1250} |
| `renderers` | {'int': 1250} |
| `tabs` | {'int': 1249} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
