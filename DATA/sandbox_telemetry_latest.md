# sandbox_telemetry_parse — 2026-10-06 11:18:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=338090 lines=746
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 741 |
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
| `chromeBrowserPssKb` | {'int': 741} |
| `chromeGpuPssKb` | {'int': 741} |
| `chromeOtherPssKb` | {'int': 741} |
| `chromeProcesses` | {'int': 741} |
| `chromeProfiles` | {'int': 741} |
| `chromeRendererMaxPssKb` | {'int': 741} |
| `chromeRendererPssKb` | {'int': 741} |
| `chromeRenderers` | {'int': 741} |
| `chromeTabs` | {'int': 741} |
| `chromeTabsProbedProfiles` | {'int': 741} |
| `chromeUtilityPssKb` | {'int': 741} |
| `desktopPssKb` | {'int': 741} |
| `hostPssKb` | {'int': 741} |
| `kind` | {'str': 741} |
| `memAvailableKb` | {'int': 741} |
| `memTotalKb` | {'int': 741} |
| `otherPssKb` | {'int': 741} |
| `processes` | {'int': 741} |
| `pssFallbackProcesses` | {'int': 741} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
