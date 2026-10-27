# sandbox_telemetry_parse — 2026-10-27 02:59:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=282552 lines=628
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 623 |
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
| `chromeBrowserPssKb` | {'int': 623} |
| `chromeGpuPssKb` | {'int': 623} |
| `chromeOtherPssKb` | {'int': 623} |
| `chromeProcesses` | {'int': 623} |
| `chromeProfiles` | {'int': 623} |
| `chromeRendererMaxPssKb` | {'int': 623} |
| `chromeRendererPssKb` | {'int': 623} |
| `chromeRenderers` | {'int': 623} |
| `chromeTabs` | {'int': 623} |
| `chromeTabsProbedProfiles` | {'int': 623} |
| `chromeUtilityPssKb` | {'int': 623} |
| `desktopPssKb` | {'int': 623} |
| `hostPssKb` | {'int': 623} |
| `kind` | {'str': 623} |
| `memAvailableKb` | {'int': 623} |
| `memTotalKb` | {'int': 623} |
| `otherPssKb` | {'int': 623} |
| `processes` | {'int': 623} |
| `pssFallbackProcesses` | {'int': 623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
