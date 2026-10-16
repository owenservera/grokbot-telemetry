# sandbox_telemetry_parse — 2026-10-16 16:46:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=640778 lines=2395
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1584 |
| `memory_sample` | 802 |
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
| `chromeBrowserPssKb` | {'int': 802} |
| `chromeGpuPssKb` | {'int': 802} |
| `chromeOtherPssKb` | {'int': 802} |
| `chromeProcesses` | {'int': 802} |
| `chromeProfiles` | {'int': 802} |
| `chromeRendererMaxPssKb` | {'int': 802} |
| `chromeRendererPssKb` | {'int': 802} |
| `chromeRenderers` | {'int': 802} |
| `chromeTabs` | {'int': 802} |
| `chromeTabsProbedProfiles` | {'int': 802} |
| `chromeUtilityPssKb` | {'int': 802} |
| `desktopPssKb` | {'int': 802} |
| `hostPssKb` | {'int': 802} |
| `kind` | {'str': 802} |
| `memAvailableKb` | {'int': 802} |
| `memTotalKb` | {'int': 802} |
| `otherPssKb` | {'int': 802} |
| `processes` | {'int': 802} |
| `pssFallbackProcesses` | {'int': 802} |

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
| `cpuMillicores` | {'int': 1581} |
| `display` | {'int': 1584} |
| `kind` | {'str': 1584} |
| `processes` | {'int': 1584} |
| `pssKb` | {'int': 1584} |
| `rendererMaxPssKb` | {'int': 1584} |
| `renderers` | {'int': 1584} |
| `tabs` | {'int': 1583} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
