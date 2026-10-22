# sandbox_telemetry_parse — 2026-10-22 11:16:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=3130217 lines=8427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5977 |
| `chrome_profile_sample` | 2440 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 5977} |
| `chromeGpuPssKb` | {'int': 5977} |
| `chromeOtherPssKb` | {'int': 5977} |
| `chromeProcesses` | {'int': 5977} |
| `chromeProfiles` | {'int': 5977} |
| `chromeRendererMaxPssKb` | {'int': 5977} |
| `chromeRendererPssKb` | {'int': 5977} |
| `chromeRenderers` | {'int': 5977} |
| `chromeTabs` | {'int': 5977} |
| `chromeTabsProbedProfiles` | {'int': 5977} |
| `chromeUtilityPssKb` | {'int': 5977} |
| `desktopPssKb` | {'int': 5977} |
| `hostPssKb` | {'int': 5977} |
| `kind` | {'str': 5977} |
| `memAvailableKb` | {'int': 5977} |
| `memTotalKb` | {'int': 5977} |
| `otherPssKb` | {'int': 5977} |
| `processes` | {'int': 5977} |
| `pssFallbackProcesses` | {'int': 5977} |

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
| `cpuMillicores` | {'int': 2437} |
| `display` | {'int': 2440} |
| `kind` | {'str': 2440} |
| `processes` | {'int': 2440} |
| `pssKb` | {'int': 2440} |
| `rendererMaxPssKb` | {'int': 2440} |
| `renderers` | {'int': 2440} |
| `tabs` | {'int': 2439} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
