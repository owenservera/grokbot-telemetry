# sandbox_telemetry_parse — 2026-10-13 13:11:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1100057 lines=2815
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2173 |
| `chrome_profile_sample` | 634 |
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
| `chromeBrowserPssKb` | {'int': 2173} |
| `chromeGpuPssKb` | {'int': 2173} |
| `chromeOtherPssKb` | {'int': 2173} |
| `chromeProcesses` | {'int': 2173} |
| `chromeProfiles` | {'int': 2173} |
| `chromeRendererMaxPssKb` | {'int': 2173} |
| `chromeRendererPssKb` | {'int': 2173} |
| `chromeRenderers` | {'int': 2173} |
| `chromeTabs` | {'int': 2173} |
| `chromeTabsProbedProfiles` | {'int': 2173} |
| `chromeUtilityPssKb` | {'int': 2173} |
| `desktopPssKb` | {'int': 2173} |
| `hostPssKb` | {'int': 2173} |
| `kind` | {'str': 2173} |
| `memAvailableKb` | {'int': 2173} |
| `memTotalKb` | {'int': 2173} |
| `otherPssKb` | {'int': 2173} |
| `processes` | {'int': 2173} |
| `pssFallbackProcesses` | {'int': 2173} |

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
| `cpuMillicores` | {'int': 633} |
| `display` | {'int': 634} |
| `kind` | {'str': 634} |
| `processes` | {'int': 634} |
| `pssKb` | {'int': 634} |
| `rendererMaxPssKb` | {'int': 634} |
| `renderers` | {'int': 634} |
| `tabs` | {'int': 634} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
