# sandbox_telemetry_parse — 2026-11-27 21:01:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=589232 lines=1309
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1301 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1301} |
| `chromeGpuPssKb` | {'int': 1301} |
| `chromeOtherPssKb` | {'int': 1301} |
| `chromeProcesses` | {'int': 1301} |
| `chromeProfiles` | {'int': 1301} |
| `chromeRendererMaxPssKb` | {'int': 1301} |
| `chromeRendererPssKb` | {'int': 1301} |
| `chromeRenderers` | {'int': 1301} |
| `chromeTabs` | {'int': 1301} |
| `chromeTabsProbedProfiles` | {'int': 1301} |
| `chromeUtilityPssKb` | {'int': 1301} |
| `desktopPssKb` | {'int': 1301} |
| `hostPssKb` | {'int': 1301} |
| `kind` | {'str': 1301} |
| `memAvailableKb` | {'int': 1301} |
| `memTotalKb` | {'int': 1301} |
| `otherPssKb` | {'int': 1301} |
| `processes` | {'int': 1301} |
| `pssFallbackProcesses` | {'int': 1301} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
