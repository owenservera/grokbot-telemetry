# sandbox_telemetry_parse — 2026-10-07 16:11:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1118029 lines=2456
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2451 |
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
| `chromeBrowserPssKb` | {'int': 2451} |
| `chromeGpuPssKb` | {'int': 2451} |
| `chromeOtherPssKb` | {'int': 2451} |
| `chromeProcesses` | {'int': 2451} |
| `chromeProfiles` | {'int': 2451} |
| `chromeRendererMaxPssKb` | {'int': 2451} |
| `chromeRendererPssKb` | {'int': 2451} |
| `chromeRenderers` | {'int': 2451} |
| `chromeTabs` | {'int': 2451} |
| `chromeTabsProbedProfiles` | {'int': 2451} |
| `chromeUtilityPssKb` | {'int': 2451} |
| `desktopPssKb` | {'int': 2451} |
| `hostPssKb` | {'int': 2451} |
| `kind` | {'str': 2451} |
| `memAvailableKb` | {'int': 2451} |
| `memTotalKb` | {'int': 2451} |
| `otherPssKb` | {'int': 2451} |
| `processes` | {'int': 2451} |
| `pssFallbackProcesses` | {'int': 2451} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
