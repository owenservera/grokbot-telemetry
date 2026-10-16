# sandbox_telemetry_parse — 2026-10-16 10:53:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=378386 lines=1414
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 930 |
| `memory_sample` | 475 |
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
| `chromeBrowserPssKb` | {'int': 475} |
| `chromeGpuPssKb` | {'int': 475} |
| `chromeOtherPssKb` | {'int': 475} |
| `chromeProcesses` | {'int': 475} |
| `chromeProfiles` | {'int': 475} |
| `chromeRendererMaxPssKb` | {'int': 475} |
| `chromeRendererPssKb` | {'int': 475} |
| `chromeRenderers` | {'int': 475} |
| `chromeTabs` | {'int': 475} |
| `chromeTabsProbedProfiles` | {'int': 475} |
| `chromeUtilityPssKb` | {'int': 475} |
| `desktopPssKb` | {'int': 475} |
| `hostPssKb` | {'int': 475} |
| `kind` | {'str': 475} |
| `memAvailableKb` | {'int': 475} |
| `memTotalKb` | {'int': 475} |
| `otherPssKb` | {'int': 475} |
| `processes` | {'int': 475} |
| `pssFallbackProcesses` | {'int': 475} |

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
| `cpuMillicores` | {'int': 927} |
| `display` | {'int': 930} |
| `kind` | {'str': 930} |
| `processes` | {'int': 930} |
| `pssKb` | {'int': 930} |
| `rendererMaxPssKb` | {'int': 930} |
| `renderers` | {'int': 930} |
| `tabs` | {'int': 929} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
