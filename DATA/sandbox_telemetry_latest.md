# sandbox_telemetry_parse — 2026-11-20 12:54:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1721616 lines=3816
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3805 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3805} |
| `chromeGpuPssKb` | {'int': 3805} |
| `chromeOtherPssKb` | {'int': 3805} |
| `chromeProcesses` | {'int': 3805} |
| `chromeProfiles` | {'int': 3805} |
| `chromeRendererMaxPssKb` | {'int': 3805} |
| `chromeRendererPssKb` | {'int': 3805} |
| `chromeRenderers` | {'int': 3805} |
| `chromeTabs` | {'int': 3805} |
| `chromeTabsProbedProfiles` | {'int': 3805} |
| `chromeUtilityPssKb` | {'int': 3805} |
| `desktopPssKb` | {'int': 3805} |
| `hostPssKb` | {'int': 3805} |
| `kind` | {'str': 3805} |
| `memAvailableKb` | {'int': 3805} |
| `memTotalKb` | {'int': 3805} |
| `otherPssKb` | {'int': 3805} |
| `processes` | {'int': 3805} |
| `pssFallbackProcesses` | {'int': 3805} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
