# sandbox_telemetry_parse — 2026-11-10 19:01:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1274818 lines=2825
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2816 |
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
| `chromeBrowserPssKb` | {'int': 2816} |
| `chromeGpuPssKb` | {'int': 2816} |
| `chromeOtherPssKb` | {'int': 2816} |
| `chromeProcesses` | {'int': 2816} |
| `chromeProfiles` | {'int': 2816} |
| `chromeRendererMaxPssKb` | {'int': 2816} |
| `chromeRendererPssKb` | {'int': 2816} |
| `chromeRenderers` | {'int': 2816} |
| `chromeTabs` | {'int': 2816} |
| `chromeTabsProbedProfiles` | {'int': 2816} |
| `chromeUtilityPssKb` | {'int': 2816} |
| `desktopPssKb` | {'int': 2816} |
| `hostPssKb` | {'int': 2816} |
| `kind` | {'str': 2816} |
| `memAvailableKb` | {'int': 2816} |
| `memTotalKb` | {'int': 2816} |
| `otherPssKb` | {'int': 2816} |
| `processes` | {'int': 2816} |
| `pssFallbackProcesses` | {'int': 2816} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
