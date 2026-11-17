# sandbox_telemetry_parse — 2026-11-17 11:06:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=363653 lines=810
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 803 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 803} |
| `chromeGpuPssKb` | {'int': 803} |
| `chromeOtherPssKb` | {'int': 803} |
| `chromeProcesses` | {'int': 803} |
| `chromeProfiles` | {'int': 803} |
| `chromeRendererMaxPssKb` | {'int': 803} |
| `chromeRendererPssKb` | {'int': 803} |
| `chromeRenderers` | {'int': 803} |
| `chromeTabs` | {'int': 803} |
| `chromeTabsProbedProfiles` | {'int': 803} |
| `chromeUtilityPssKb` | {'int': 803} |
| `desktopPssKb` | {'int': 803} |
| `hostPssKb` | {'int': 803} |
| `kind` | {'str': 803} |
| `memAvailableKb` | {'int': 803} |
| `memTotalKb` | {'int': 803} |
| `otherPssKb` | {'int': 803} |
| `processes` | {'int': 803} |
| `pssFallbackProcesses` | {'int': 803} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
