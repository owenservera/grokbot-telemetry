# sandbox_telemetry_parse — 2026-10-17 00:47:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=973237 lines=3637
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2412 |
| `memory_sample` | 1216 |
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
| `chromeBrowserPssKb` | {'int': 1216} |
| `chromeGpuPssKb` | {'int': 1216} |
| `chromeOtherPssKb` | {'int': 1216} |
| `chromeProcesses` | {'int': 1216} |
| `chromeProfiles` | {'int': 1216} |
| `chromeRendererMaxPssKb` | {'int': 1216} |
| `chromeRendererPssKb` | {'int': 1216} |
| `chromeRenderers` | {'int': 1216} |
| `chromeTabs` | {'int': 1216} |
| `chromeTabsProbedProfiles` | {'int': 1216} |
| `chromeUtilityPssKb` | {'int': 1216} |
| `desktopPssKb` | {'int': 1216} |
| `hostPssKb` | {'int': 1216} |
| `kind` | {'str': 1216} |
| `memAvailableKb` | {'int': 1216} |
| `memTotalKb` | {'int': 1216} |
| `otherPssKb` | {'int': 1216} |
| `processes` | {'int': 1216} |
| `pssFallbackProcesses` | {'int': 1216} |

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
| `cpuMillicores` | {'int': 2409} |
| `display` | {'int': 2412} |
| `kind` | {'str': 2412} |
| `processes` | {'int': 2412} |
| `pssKb` | {'int': 2412} |
| `rendererMaxPssKb` | {'int': 2412} |
| `renderers` | {'int': 2412} |
| `tabs` | {'int': 2411} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
