# sandbox_telemetry_parse — 2026-10-25 16:18:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=5043533 lines=12660
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 10210 |
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
| `chromeBrowserPssKb` | {'int': 10210} |
| `chromeGpuPssKb` | {'int': 10210} |
| `chromeOtherPssKb` | {'int': 10210} |
| `chromeProcesses` | {'int': 10210} |
| `chromeProfiles` | {'int': 10210} |
| `chromeRendererMaxPssKb` | {'int': 10210} |
| `chromeRendererPssKb` | {'int': 10210} |
| `chromeRenderers` | {'int': 10210} |
| `chromeTabs` | {'int': 10210} |
| `chromeTabsProbedProfiles` | {'int': 10210} |
| `chromeUtilityPssKb` | {'int': 10210} |
| `desktopPssKb` | {'int': 10210} |
| `hostPssKb` | {'int': 10210} |
| `kind` | {'str': 10210} |
| `memAvailableKb` | {'int': 10210} |
| `memTotalKb` | {'int': 10210} |
| `otherPssKb` | {'int': 10210} |
| `processes` | {'int': 10210} |
| `pssFallbackProcesses` | {'int': 10210} |

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
