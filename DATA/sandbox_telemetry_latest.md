# sandbox_telemetry_parse — 2026-10-16 15:00:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=558142 lines=2086
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1378 |
| `memory_sample` | 699 |
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
| `chromeBrowserPssKb` | {'int': 699} |
| `chromeGpuPssKb` | {'int': 699} |
| `chromeOtherPssKb` | {'int': 699} |
| `chromeProcesses` | {'int': 699} |
| `chromeProfiles` | {'int': 699} |
| `chromeRendererMaxPssKb` | {'int': 699} |
| `chromeRendererPssKb` | {'int': 699} |
| `chromeRenderers` | {'int': 699} |
| `chromeTabs` | {'int': 699} |
| `chromeTabsProbedProfiles` | {'int': 699} |
| `chromeUtilityPssKb` | {'int': 699} |
| `desktopPssKb` | {'int': 699} |
| `hostPssKb` | {'int': 699} |
| `kind` | {'str': 699} |
| `memAvailableKb` | {'int': 699} |
| `memTotalKb` | {'int': 699} |
| `otherPssKb` | {'int': 699} |
| `processes` | {'int': 699} |
| `pssFallbackProcesses` | {'int': 699} |

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
| `cpuMillicores` | {'int': 1375} |
| `display` | {'int': 1378} |
| `kind` | {'str': 1378} |
| `processes` | {'int': 1378} |
| `pssKb` | {'int': 1378} |
| `rendererMaxPssKb` | {'int': 1378} |
| `renderers` | {'int': 1378} |
| `tabs` | {'int': 1377} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
