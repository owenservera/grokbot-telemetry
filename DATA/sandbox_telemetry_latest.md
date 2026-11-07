# sandbox_telemetry_parse — 2026-11-07 02:23:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=269871 lines=604
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 595 |
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
| `chromeBrowserPssKb` | {'int': 595} |
| `chromeGpuPssKb` | {'int': 595} |
| `chromeOtherPssKb` | {'int': 595} |
| `chromeProcesses` | {'int': 595} |
| `chromeProfiles` | {'int': 595} |
| `chromeRendererMaxPssKb` | {'int': 595} |
| `chromeRendererPssKb` | {'int': 595} |
| `chromeRenderers` | {'int': 595} |
| `chromeTabs` | {'int': 595} |
| `chromeTabsProbedProfiles` | {'int': 595} |
| `chromeUtilityPssKb` | {'int': 595} |
| `desktopPssKb` | {'int': 595} |
| `hostPssKb` | {'int': 595} |
| `kind` | {'str': 595} |
| `memAvailableKb` | {'int': 595} |
| `memTotalKb` | {'int': 595} |
| `otherPssKb` | {'int': 595} |
| `processes` | {'int': 595} |
| `pssFallbackProcesses` | {'int': 595} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
