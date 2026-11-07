# sandbox_telemetry_parse — 2026-11-07 07:41:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=364811 lines=814
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 805 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 805} |
| `chromeGpuPssKb` | {'int': 805} |
| `chromeOtherPssKb` | {'int': 805} |
| `chromeProcesses` | {'int': 805} |
| `chromeProfiles` | {'int': 805} |
| `chromeRendererMaxPssKb` | {'int': 805} |
| `chromeRendererPssKb` | {'int': 805} |
| `chromeRenderers` | {'int': 805} |
| `chromeTabs` | {'int': 805} |
| `chromeTabsProbedProfiles` | {'int': 805} |
| `chromeUtilityPssKb` | {'int': 805} |
| `desktopPssKb` | {'int': 805} |
| `hostPssKb` | {'int': 805} |
| `kind` | {'str': 805} |
| `memAvailableKb` | {'int': 805} |
| `memTotalKb` | {'int': 805} |
| `otherPssKb` | {'int': 805} |
| `processes` | {'int': 805} |
| `pssFallbackProcesses` | {'int': 805} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
