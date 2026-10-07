# sandbox_telemetry_parse — 2026-10-07 15:05:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1089757 lines=2394
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2389 |
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
| `chromeBrowserPssKb` | {'int': 2389} |
| `chromeGpuPssKb` | {'int': 2389} |
| `chromeOtherPssKb` | {'int': 2389} |
| `chromeProcesses` | {'int': 2389} |
| `chromeProfiles` | {'int': 2389} |
| `chromeRendererMaxPssKb` | {'int': 2389} |
| `chromeRendererPssKb` | {'int': 2389} |
| `chromeRenderers` | {'int': 2389} |
| `chromeTabs` | {'int': 2389} |
| `chromeTabsProbedProfiles` | {'int': 2389} |
| `chromeUtilityPssKb` | {'int': 2389} |
| `desktopPssKb` | {'int': 2389} |
| `hostPssKb` | {'int': 2389} |
| `kind` | {'str': 2389} |
| `memAvailableKb` | {'int': 2389} |
| `memTotalKb` | {'int': 2389} |
| `otherPssKb` | {'int': 2389} |
| `processes` | {'int': 2389} |
| `pssFallbackProcesses` | {'int': 2389} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
