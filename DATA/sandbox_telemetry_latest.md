# sandbox_telemetry_parse — 2026-11-18 16:34:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=893307 lines=1983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1974 |
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
| `chromeBrowserPssKb` | {'int': 1974} |
| `chromeGpuPssKb` | {'int': 1974} |
| `chromeOtherPssKb` | {'int': 1974} |
| `chromeProcesses` | {'int': 1974} |
| `chromeProfiles` | {'int': 1974} |
| `chromeRendererMaxPssKb` | {'int': 1974} |
| `chromeRendererPssKb` | {'int': 1974} |
| `chromeRenderers` | {'int': 1974} |
| `chromeTabs` | {'int': 1974} |
| `chromeTabsProbedProfiles` | {'int': 1974} |
| `chromeUtilityPssKb` | {'int': 1974} |
| `desktopPssKb` | {'int': 1974} |
| `hostPssKb` | {'int': 1974} |
| `kind` | {'str': 1974} |
| `memAvailableKb` | {'int': 1974} |
| `memTotalKb` | {'int': 1974} |
| `otherPssKb` | {'int': 1974} |
| `processes` | {'int': 1974} |
| `pssFallbackProcesses` | {'int': 1974} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
