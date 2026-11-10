# sandbox_telemetry_parse — 2026-11-10 18:53:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1273462 lines=2822
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2813 |
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
| `chromeBrowserPssKb` | {'int': 2813} |
| `chromeGpuPssKb` | {'int': 2813} |
| `chromeOtherPssKb` | {'int': 2813} |
| `chromeProcesses` | {'int': 2813} |
| `chromeProfiles` | {'int': 2813} |
| `chromeRendererMaxPssKb` | {'int': 2813} |
| `chromeRendererPssKb` | {'int': 2813} |
| `chromeRenderers` | {'int': 2813} |
| `chromeTabs` | {'int': 2813} |
| `chromeTabsProbedProfiles` | {'int': 2813} |
| `chromeUtilityPssKb` | {'int': 2813} |
| `desktopPssKb` | {'int': 2813} |
| `hostPssKb` | {'int': 2813} |
| `kind` | {'str': 2813} |
| `memAvailableKb` | {'int': 2813} |
| `memTotalKb` | {'int': 2813} |
| `otherPssKb` | {'int': 2813} |
| `processes` | {'int': 2813} |
| `pssFallbackProcesses` | {'int': 2813} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
