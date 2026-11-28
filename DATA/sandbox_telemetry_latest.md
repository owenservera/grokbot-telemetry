# sandbox_telemetry_parse — 2026-11-28 12:15:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=880577 lines=1953
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1945 |
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
| `chromeBrowserPssKb` | {'int': 1945} |
| `chromeGpuPssKb` | {'int': 1945} |
| `chromeOtherPssKb` | {'int': 1945} |
| `chromeProcesses` | {'int': 1945} |
| `chromeProfiles` | {'int': 1945} |
| `chromeRendererMaxPssKb` | {'int': 1945} |
| `chromeRendererPssKb` | {'int': 1945} |
| `chromeRenderers` | {'int': 1945} |
| `chromeTabs` | {'int': 1945} |
| `chromeTabsProbedProfiles` | {'int': 1945} |
| `chromeUtilityPssKb` | {'int': 1945} |
| `desktopPssKb` | {'int': 1945} |
| `hostPssKb` | {'int': 1945} |
| `kind` | {'str': 1945} |
| `memAvailableKb` | {'int': 1945} |
| `memTotalKb` | {'int': 1945} |
| `otherPssKb` | {'int': 1945} |
| `processes` | {'int': 1945} |
| `pssFallbackProcesses` | {'int': 1945} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
