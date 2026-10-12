# sandbox_telemetry_parse — 2026-10-12 23:45:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=702079 lines=1565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1548 |
| `chrome_profile_sample` | 9 |
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
| `chromeBrowserPssKb` | {'int': 1548} |
| `chromeGpuPssKb` | {'int': 1548} |
| `chromeOtherPssKb` | {'int': 1548} |
| `chromeProcesses` | {'int': 1548} |
| `chromeProfiles` | {'int': 1548} |
| `chromeRendererMaxPssKb` | {'int': 1548} |
| `chromeRendererPssKb` | {'int': 1548} |
| `chromeRenderers` | {'int': 1548} |
| `chromeTabs` | {'int': 1548} |
| `chromeTabsProbedProfiles` | {'int': 1548} |
| `chromeUtilityPssKb` | {'int': 1548} |
| `desktopPssKb` | {'int': 1548} |
| `hostPssKb` | {'int': 1548} |
| `kind` | {'str': 1548} |
| `memAvailableKb` | {'int': 1548} |
| `memTotalKb` | {'int': 1548} |
| `otherPssKb` | {'int': 1548} |
| `processes` | {'int': 1548} |
| `pssFallbackProcesses` | {'int': 1548} |

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
| `cpuMillicores` | {'int': 8} |
| `display` | {'int': 9} |
| `kind` | {'str': 9} |
| `processes` | {'int': 9} |
| `pssKb` | {'int': 9} |
| `rendererMaxPssKb` | {'int': 9} |
| `renderers` | {'int': 9} |
| `tabs` | {'int': 9} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
