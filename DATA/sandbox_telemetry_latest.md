# sandbox_telemetry_parse — 2026-11-09 19:09:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=802832 lines=1782
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1773 |
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
| `chromeBrowserPssKb` | {'int': 1773} |
| `chromeGpuPssKb` | {'int': 1773} |
| `chromeOtherPssKb` | {'int': 1773} |
| `chromeProcesses` | {'int': 1773} |
| `chromeProfiles` | {'int': 1773} |
| `chromeRendererMaxPssKb` | {'int': 1773} |
| `chromeRendererPssKb` | {'int': 1773} |
| `chromeRenderers` | {'int': 1773} |
| `chromeTabs` | {'int': 1773} |
| `chromeTabsProbedProfiles` | {'int': 1773} |
| `chromeUtilityPssKb` | {'int': 1773} |
| `desktopPssKb` | {'int': 1773} |
| `hostPssKb` | {'int': 1773} |
| `kind` | {'str': 1773} |
| `memAvailableKb` | {'int': 1773} |
| `memTotalKb` | {'int': 1773} |
| `otherPssKb` | {'int': 1773} |
| `processes` | {'int': 1773} |
| `pssFallbackProcesses` | {'int': 1773} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
