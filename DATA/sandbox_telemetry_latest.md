# sandbox_telemetry_parse — 2026-10-12 23:59:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=708448 lines=1585
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1558 |
| `chrome_profile_sample` | 19 |
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
| `chromeBrowserPssKb` | {'int': 1558} |
| `chromeGpuPssKb` | {'int': 1558} |
| `chromeOtherPssKb` | {'int': 1558} |
| `chromeProcesses` | {'int': 1558} |
| `chromeProfiles` | {'int': 1558} |
| `chromeRendererMaxPssKb` | {'int': 1558} |
| `chromeRendererPssKb` | {'int': 1558} |
| `chromeRenderers` | {'int': 1558} |
| `chromeTabs` | {'int': 1558} |
| `chromeTabsProbedProfiles` | {'int': 1558} |
| `chromeUtilityPssKb` | {'int': 1558} |
| `desktopPssKb` | {'int': 1558} |
| `hostPssKb` | {'int': 1558} |
| `kind` | {'str': 1558} |
| `memAvailableKb` | {'int': 1558} |
| `memTotalKb` | {'int': 1558} |
| `otherPssKb` | {'int': 1558} |
| `processes` | {'int': 1558} |
| `pssFallbackProcesses` | {'int': 1558} |

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
| `cpuMillicores` | {'int': 18} |
| `display` | {'int': 19} |
| `kind` | {'str': 19} |
| `processes` | {'int': 19} |
| `pssKb` | {'int': 19} |
| `rendererMaxPssKb` | {'int': 19} |
| `renderers` | {'int': 19} |
| `tabs` | {'int': 19} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
