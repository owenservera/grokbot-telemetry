# sandbox_telemetry_parse — 2026-10-16 11:40:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=411257 lines=1537
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1012 |
| `memory_sample` | 516 |
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
| `chromeBrowserPssKb` | {'int': 516} |
| `chromeGpuPssKb` | {'int': 516} |
| `chromeOtherPssKb` | {'int': 516} |
| `chromeProcesses` | {'int': 516} |
| `chromeProfiles` | {'int': 516} |
| `chromeRendererMaxPssKb` | {'int': 516} |
| `chromeRendererPssKb` | {'int': 516} |
| `chromeRenderers` | {'int': 516} |
| `chromeTabs` | {'int': 516} |
| `chromeTabsProbedProfiles` | {'int': 516} |
| `chromeUtilityPssKb` | {'int': 516} |
| `desktopPssKb` | {'int': 516} |
| `hostPssKb` | {'int': 516} |
| `kind` | {'str': 516} |
| `memAvailableKb` | {'int': 516} |
| `memTotalKb` | {'int': 516} |
| `otherPssKb` | {'int': 516} |
| `processes` | {'int': 516} |
| `pssFallbackProcesses` | {'int': 516} |

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
| `cpuMillicores` | {'int': 1009} |
| `display` | {'int': 1012} |
| `kind` | {'str': 1012} |
| `processes` | {'int': 1012} |
| `pssKb` | {'int': 1012} |
| `rendererMaxPssKb` | {'int': 1012} |
| `renderers` | {'int': 1012} |
| `tabs` | {'int': 1011} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
