# sandbox_telemetry_parse — 2026-10-12 20:37:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=662116 lines=1469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1464 |
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
| `chromeBrowserPssKb` | {'int': 1464} |
| `chromeGpuPssKb` | {'int': 1464} |
| `chromeOtherPssKb` | {'int': 1464} |
| `chromeProcesses` | {'int': 1464} |
| `chromeProfiles` | {'int': 1464} |
| `chromeRendererMaxPssKb` | {'int': 1464} |
| `chromeRendererPssKb` | {'int': 1464} |
| `chromeRenderers` | {'int': 1464} |
| `chromeTabs` | {'int': 1464} |
| `chromeTabsProbedProfiles` | {'int': 1464} |
| `chromeUtilityPssKb` | {'int': 1464} |
| `desktopPssKb` | {'int': 1464} |
| `hostPssKb` | {'int': 1464} |
| `kind` | {'str': 1464} |
| `memAvailableKb` | {'int': 1464} |
| `memTotalKb` | {'int': 1464} |
| `otherPssKb` | {'int': 1464} |
| `processes` | {'int': 1464} |
| `pssFallbackProcesses` | {'int': 1464} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
