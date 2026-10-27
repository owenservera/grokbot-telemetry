# sandbox_telemetry_parse — 2026-10-27 04:26:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=320068 lines=711
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 706 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 706} |
| `chromeGpuPssKb` | {'int': 706} |
| `chromeOtherPssKb` | {'int': 706} |
| `chromeProcesses` | {'int': 706} |
| `chromeProfiles` | {'int': 706} |
| `chromeRendererMaxPssKb` | {'int': 706} |
| `chromeRendererPssKb` | {'int': 706} |
| `chromeRenderers` | {'int': 706} |
| `chromeTabs` | {'int': 706} |
| `chromeTabsProbedProfiles` | {'int': 706} |
| `chromeUtilityPssKb` | {'int': 706} |
| `desktopPssKb` | {'int': 706} |
| `hostPssKb` | {'int': 706} |
| `kind` | {'str': 706} |
| `memAvailableKb` | {'int': 706} |
| `memTotalKb` | {'int': 706} |
| `otherPssKb` | {'int': 706} |
| `processes` | {'int': 706} |
| `pssFallbackProcesses` | {'int': 706} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
