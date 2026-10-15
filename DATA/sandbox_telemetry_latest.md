# sandbox_telemetry_parse — 2026-10-16 01:57:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1168974 lines=2602
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2578 |
| `chrome_profile_sample` | 16 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2578} |
| `chromeGpuPssKb` | {'int': 2578} |
| `chromeOtherPssKb` | {'int': 2578} |
| `chromeProcesses` | {'int': 2578} |
| `chromeProfiles` | {'int': 2578} |
| `chromeRendererMaxPssKb` | {'int': 2578} |
| `chromeRendererPssKb` | {'int': 2578} |
| `chromeRenderers` | {'int': 2578} |
| `chromeTabs` | {'int': 2578} |
| `chromeTabsProbedProfiles` | {'int': 2578} |
| `chromeUtilityPssKb` | {'int': 2578} |
| `desktopPssKb` | {'int': 2578} |
| `hostPssKb` | {'int': 2578} |
| `kind` | {'str': 2578} |
| `memAvailableKb` | {'int': 2578} |
| `memTotalKb` | {'int': 2578} |
| `otherPssKb` | {'int': 2578} |
| `processes` | {'int': 2578} |
| `pssFallbackProcesses` | {'int': 2578} |

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
| `cpuMillicores` | {'int': 15} |
| `display` | {'int': 16} |
| `kind` | {'str': 16} |
| `processes` | {'int': 16} |
| `pssKb` | {'int': 16} |
| `rendererMaxPssKb` | {'int': 16} |
| `renderers` | {'int': 16} |
| `tabs` | {'int': 16} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
