# sandbox_telemetry_parse — 2026-10-26 20:29:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=124956 lines=280
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 275 |
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
| `chromeBrowserPssKb` | {'int': 275} |
| `chromeGpuPssKb` | {'int': 275} |
| `chromeOtherPssKb` | {'int': 275} |
| `chromeProcesses` | {'int': 275} |
| `chromeProfiles` | {'int': 275} |
| `chromeRendererMaxPssKb` | {'int': 275} |
| `chromeRendererPssKb` | {'int': 275} |
| `chromeRenderers` | {'int': 275} |
| `chromeTabs` | {'int': 275} |
| `chromeTabsProbedProfiles` | {'int': 275} |
| `chromeUtilityPssKb` | {'int': 275} |
| `desktopPssKb` | {'int': 275} |
| `hostPssKb` | {'int': 275} |
| `kind` | {'str': 275} |
| `memAvailableKb` | {'int': 275} |
| `memTotalKb` | {'int': 275} |
| `otherPssKb` | {'int': 275} |
| `processes` | {'int': 275} |
| `pssFallbackProcesses` | {'int': 275} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
