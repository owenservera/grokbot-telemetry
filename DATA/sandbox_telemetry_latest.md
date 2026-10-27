# sandbox_telemetry_parse — 2026-10-27 05:57:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=357132 lines=793
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 788 |
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
| `chromeBrowserPssKb` | {'int': 788} |
| `chromeGpuPssKb` | {'int': 788} |
| `chromeOtherPssKb` | {'int': 788} |
| `chromeProcesses` | {'int': 788} |
| `chromeProfiles` | {'int': 788} |
| `chromeRendererMaxPssKb` | {'int': 788} |
| `chromeRendererPssKb` | {'int': 788} |
| `chromeRenderers` | {'int': 788} |
| `chromeTabs` | {'int': 788} |
| `chromeTabsProbedProfiles` | {'int': 788} |
| `chromeUtilityPssKb` | {'int': 788} |
| `desktopPssKb` | {'int': 788} |
| `hostPssKb` | {'int': 788} |
| `kind` | {'str': 788} |
| `memAvailableKb` | {'int': 788} |
| `memTotalKb` | {'int': 788} |
| `otherPssKb` | {'int': 788} |
| `processes` | {'int': 788} |
| `pssFallbackProcesses` | {'int': 788} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
