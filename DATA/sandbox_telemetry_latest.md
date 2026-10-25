# sandbox_telemetry_parse — 2026-10-25 02:43:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=4703629 lines=11908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 9458 |
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
| `chromeBrowserPssKb` | {'int': 9458} |
| `chromeGpuPssKb` | {'int': 9458} |
| `chromeOtherPssKb` | {'int': 9458} |
| `chromeProcesses` | {'int': 9458} |
| `chromeProfiles` | {'int': 9458} |
| `chromeRendererMaxPssKb` | {'int': 9458} |
| `chromeRendererPssKb` | {'int': 9458} |
| `chromeRenderers` | {'int': 9458} |
| `chromeTabs` | {'int': 9458} |
| `chromeTabsProbedProfiles` | {'int': 9458} |
| `chromeUtilityPssKb` | {'int': 9458} |
| `desktopPssKb` | {'int': 9458} |
| `hostPssKb` | {'int': 9458} |
| `kind` | {'str': 9458} |
| `memAvailableKb` | {'int': 9458} |
| `memTotalKb` | {'int': 9458} |
| `otherPssKb` | {'int': 9458} |
| `processes` | {'int': 9458} |
| `pssFallbackProcesses` | {'int': 9458} |

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
