# sandbox_telemetry_parse — 2026-10-13 09:11:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=972582 lines=2415
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1973 |
| `chrome_profile_sample` | 434 |
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
| `chromeBrowserPssKb` | {'int': 1973} |
| `chromeGpuPssKb` | {'int': 1973} |
| `chromeOtherPssKb` | {'int': 1973} |
| `chromeProcesses` | {'int': 1973} |
| `chromeProfiles` | {'int': 1973} |
| `chromeRendererMaxPssKb` | {'int': 1973} |
| `chromeRendererPssKb` | {'int': 1973} |
| `chromeRenderers` | {'int': 1973} |
| `chromeTabs` | {'int': 1973} |
| `chromeTabsProbedProfiles` | {'int': 1973} |
| `chromeUtilityPssKb` | {'int': 1973} |
| `desktopPssKb` | {'int': 1973} |
| `hostPssKb` | {'int': 1973} |
| `kind` | {'str': 1973} |
| `memAvailableKb` | {'int': 1973} |
| `memTotalKb` | {'int': 1973} |
| `otherPssKb` | {'int': 1973} |
| `processes` | {'int': 1973} |
| `pssFallbackProcesses` | {'int': 1973} |

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
| `cpuMillicores` | {'int': 433} |
| `display` | {'int': 434} |
| `kind` | {'str': 434} |
| `processes` | {'int': 434} |
| `pssKb` | {'int': 434} |
| `rendererMaxPssKb` | {'int': 434} |
| `renderers` | {'int': 434} |
| `tabs` | {'int': 434} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
