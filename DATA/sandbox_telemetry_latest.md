# sandbox_telemetry_parse — 2026-10-06 15:30:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=450722 lines=993
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 988 |
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
| `chromeBrowserPssKb` | {'int': 988} |
| `chromeGpuPssKb` | {'int': 988} |
| `chromeOtherPssKb` | {'int': 988} |
| `chromeProcesses` | {'int': 988} |
| `chromeProfiles` | {'int': 988} |
| `chromeRendererMaxPssKb` | {'int': 988} |
| `chromeRendererPssKb` | {'int': 988} |
| `chromeRenderers` | {'int': 988} |
| `chromeTabs` | {'int': 988} |
| `chromeTabsProbedProfiles` | {'int': 988} |
| `chromeUtilityPssKb` | {'int': 988} |
| `desktopPssKb` | {'int': 988} |
| `hostPssKb` | {'int': 988} |
| `kind` | {'str': 988} |
| `memAvailableKb` | {'int': 988} |
| `memTotalKb` | {'int': 988} |
| `otherPssKb` | {'int': 988} |
| `processes` | {'int': 988} |
| `pssFallbackProcesses` | {'int': 988} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
