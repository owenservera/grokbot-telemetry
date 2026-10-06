# sandbox_telemetry_parse — 2026-10-06 18:01:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=518666 lines=1142
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1137 |
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
| `chromeBrowserPssKb` | {'int': 1137} |
| `chromeGpuPssKb` | {'int': 1137} |
| `chromeOtherPssKb` | {'int': 1137} |
| `chromeProcesses` | {'int': 1137} |
| `chromeProfiles` | {'int': 1137} |
| `chromeRendererMaxPssKb` | {'int': 1137} |
| `chromeRendererPssKb` | {'int': 1137} |
| `chromeRenderers` | {'int': 1137} |
| `chromeTabs` | {'int': 1137} |
| `chromeTabsProbedProfiles` | {'int': 1137} |
| `chromeUtilityPssKb` | {'int': 1137} |
| `desktopPssKb` | {'int': 1137} |
| `hostPssKb` | {'int': 1137} |
| `kind` | {'str': 1137} |
| `memAvailableKb` | {'int': 1137} |
| `memTotalKb` | {'int': 1137} |
| `otherPssKb` | {'int': 1137} |
| `processes` | {'int': 1137} |
| `pssFallbackProcesses` | {'int': 1137} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
