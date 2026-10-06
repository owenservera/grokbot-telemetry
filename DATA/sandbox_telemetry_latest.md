# sandbox_telemetry_parse — 2026-10-06 14:33:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=424730 lines=936
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 931 |
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
| `chromeBrowserPssKb` | {'int': 931} |
| `chromeGpuPssKb` | {'int': 931} |
| `chromeOtherPssKb` | {'int': 931} |
| `chromeProcesses` | {'int': 931} |
| `chromeProfiles` | {'int': 931} |
| `chromeRendererMaxPssKb` | {'int': 931} |
| `chromeRendererPssKb` | {'int': 931} |
| `chromeRenderers` | {'int': 931} |
| `chromeTabs` | {'int': 931} |
| `chromeTabsProbedProfiles` | {'int': 931} |
| `chromeUtilityPssKb` | {'int': 931} |
| `desktopPssKb` | {'int': 931} |
| `hostPssKb` | {'int': 931} |
| `kind` | {'str': 931} |
| `memAvailableKb` | {'int': 931} |
| `memTotalKb` | {'int': 931} |
| `otherPssKb` | {'int': 931} |
| `processes` | {'int': 931} |
| `pssFallbackProcesses` | {'int': 931} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
