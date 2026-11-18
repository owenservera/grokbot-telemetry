# sandbox_telemetry_parse — 2026-11-18 10:24:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=780090 lines=1731
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1724 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1724} |
| `chromeGpuPssKb` | {'int': 1724} |
| `chromeOtherPssKb` | {'int': 1724} |
| `chromeProcesses` | {'int': 1724} |
| `chromeProfiles` | {'int': 1724} |
| `chromeRendererMaxPssKb` | {'int': 1724} |
| `chromeRendererPssKb` | {'int': 1724} |
| `chromeRenderers` | {'int': 1724} |
| `chromeTabs` | {'int': 1724} |
| `chromeTabsProbedProfiles` | {'int': 1724} |
| `chromeUtilityPssKb` | {'int': 1724} |
| `desktopPssKb` | {'int': 1724} |
| `hostPssKb` | {'int': 1724} |
| `kind` | {'str': 1724} |
| `memAvailableKb` | {'int': 1724} |
| `memTotalKb` | {'int': 1724} |
| `otherPssKb` | {'int': 1724} |
| `processes` | {'int': 1724} |
| `pssFallbackProcesses` | {'int': 1724} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
