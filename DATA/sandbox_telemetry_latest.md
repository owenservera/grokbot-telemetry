# sandbox_telemetry_parse — 2026-11-11 16:31:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1716816 lines=3802
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3793 |
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
| `chromeBrowserPssKb` | {'int': 3793} |
| `chromeGpuPssKb` | {'int': 3793} |
| `chromeOtherPssKb` | {'int': 3793} |
| `chromeProcesses` | {'int': 3793} |
| `chromeProfiles` | {'int': 3793} |
| `chromeRendererMaxPssKb` | {'int': 3793} |
| `chromeRendererPssKb` | {'int': 3793} |
| `chromeRenderers` | {'int': 3793} |
| `chromeTabs` | {'int': 3793} |
| `chromeTabsProbedProfiles` | {'int': 3793} |
| `chromeUtilityPssKb` | {'int': 3793} |
| `desktopPssKb` | {'int': 3793} |
| `hostPssKb` | {'int': 3793} |
| `kind` | {'str': 3793} |
| `memAvailableKb` | {'int': 3793} |
| `memTotalKb` | {'int': 3793} |
| `otherPssKb` | {'int': 3793} |
| `processes` | {'int': 3793} |
| `pssFallbackProcesses` | {'int': 3793} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
