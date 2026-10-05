# sandbox_telemetry_parse — 2026-10-06 01:21:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=68138 lines=154
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 149 |
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
| `chromeBrowserPssKb` | {'int': 149} |
| `chromeGpuPssKb` | {'int': 149} |
| `chromeOtherPssKb` | {'int': 149} |
| `chromeProcesses` | {'int': 149} |
| `chromeProfiles` | {'int': 149} |
| `chromeRendererMaxPssKb` | {'int': 149} |
| `chromeRendererPssKb` | {'int': 149} |
| `chromeRenderers` | {'int': 149} |
| `chromeTabs` | {'int': 149} |
| `chromeTabsProbedProfiles` | {'int': 149} |
| `chromeUtilityPssKb` | {'int': 149} |
| `desktopPssKb` | {'int': 149} |
| `hostPssKb` | {'int': 149} |
| `kind` | {'str': 149} |
| `memAvailableKb` | {'int': 149} |
| `memTotalKb` | {'int': 149} |
| `otherPssKb` | {'int': 149} |
| `processes` | {'int': 149} |
| `pssFallbackProcesses` | {'int': 149} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
