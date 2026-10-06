# sandbox_telemetry_parse — 2026-10-06 16:48:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=485834 lines=1070
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1065 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1065} |
| `chromeGpuPssKb` | {'int': 1065} |
| `chromeOtherPssKb` | {'int': 1065} |
| `chromeProcesses` | {'int': 1065} |
| `chromeProfiles` | {'int': 1065} |
| `chromeRendererMaxPssKb` | {'int': 1065} |
| `chromeRendererPssKb` | {'int': 1065} |
| `chromeRenderers` | {'int': 1065} |
| `chromeTabs` | {'int': 1065} |
| `chromeTabsProbedProfiles` | {'int': 1065} |
| `chromeUtilityPssKb` | {'int': 1065} |
| `desktopPssKb` | {'int': 1065} |
| `hostPssKb` | {'int': 1065} |
| `kind` | {'str': 1065} |
| `memAvailableKb` | {'int': 1065} |
| `memTotalKb` | {'int': 1065} |
| `otherPssKb` | {'int': 1065} |
| `processes` | {'int': 1065} |
| `pssFallbackProcesses` | {'int': 1065} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
