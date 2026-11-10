# sandbox_telemetry_parse — 2026-11-10 07:54:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1044358 lines=2316
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2307 |
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
| `chromeBrowserPssKb` | {'int': 2307} |
| `chromeGpuPssKb` | {'int': 2307} |
| `chromeOtherPssKb` | {'int': 2307} |
| `chromeProcesses` | {'int': 2307} |
| `chromeProfiles` | {'int': 2307} |
| `chromeRendererMaxPssKb` | {'int': 2307} |
| `chromeRendererPssKb` | {'int': 2307} |
| `chromeRenderers` | {'int': 2307} |
| `chromeTabs` | {'int': 2307} |
| `chromeTabsProbedProfiles` | {'int': 2307} |
| `chromeUtilityPssKb` | {'int': 2307} |
| `desktopPssKb` | {'int': 2307} |
| `hostPssKb` | {'int': 2307} |
| `kind` | {'str': 2307} |
| `memAvailableKb` | {'int': 2307} |
| `memTotalKb` | {'int': 2307} |
| `otherPssKb` | {'int': 2307} |
| `processes` | {'int': 2307} |
| `pssFallbackProcesses` | {'int': 2307} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
