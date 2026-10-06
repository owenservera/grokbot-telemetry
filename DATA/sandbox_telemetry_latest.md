# sandbox_telemetry_parse — 2026-10-06 16:22:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=473978 lines=1044
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1039 |
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
| `chromeBrowserPssKb` | {'int': 1039} |
| `chromeGpuPssKb` | {'int': 1039} |
| `chromeOtherPssKb` | {'int': 1039} |
| `chromeProcesses` | {'int': 1039} |
| `chromeProfiles` | {'int': 1039} |
| `chromeRendererMaxPssKb` | {'int': 1039} |
| `chromeRendererPssKb` | {'int': 1039} |
| `chromeRenderers` | {'int': 1039} |
| `chromeTabs` | {'int': 1039} |
| `chromeTabsProbedProfiles` | {'int': 1039} |
| `chromeUtilityPssKb` | {'int': 1039} |
| `desktopPssKb` | {'int': 1039} |
| `hostPssKb` | {'int': 1039} |
| `kind` | {'str': 1039} |
| `memAvailableKb` | {'int': 1039} |
| `memTotalKb` | {'int': 1039} |
| `otherPssKb` | {'int': 1039} |
| `processes` | {'int': 1039} |
| `pssFallbackProcesses` | {'int': 1039} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
