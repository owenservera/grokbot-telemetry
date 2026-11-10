# sandbox_telemetry_parse — 2026-11-10 22:13:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1348596 lines=2988
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2979 |
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
| `chromeBrowserPssKb` | {'int': 2979} |
| `chromeGpuPssKb` | {'int': 2979} |
| `chromeOtherPssKb` | {'int': 2979} |
| `chromeProcesses` | {'int': 2979} |
| `chromeProfiles` | {'int': 2979} |
| `chromeRendererMaxPssKb` | {'int': 2979} |
| `chromeRendererPssKb` | {'int': 2979} |
| `chromeRenderers` | {'int': 2979} |
| `chromeTabs` | {'int': 2979} |
| `chromeTabsProbedProfiles` | {'int': 2979} |
| `chromeUtilityPssKb` | {'int': 2979} |
| `desktopPssKb` | {'int': 2979} |
| `hostPssKb` | {'int': 2979} |
| `kind` | {'str': 2979} |
| `memAvailableKb` | {'int': 2979} |
| `memTotalKb` | {'int': 2979} |
| `otherPssKb` | {'int': 2979} |
| `processes` | {'int': 2979} |
| `pssFallbackProcesses` | {'int': 2979} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
