# sandbox_telemetry_parse — 2026-10-27 02:14:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=264472 lines=588
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 583 |
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
| `chromeBrowserPssKb` | {'int': 583} |
| `chromeGpuPssKb` | {'int': 583} |
| `chromeOtherPssKb` | {'int': 583} |
| `chromeProcesses` | {'int': 583} |
| `chromeProfiles` | {'int': 583} |
| `chromeRendererMaxPssKb` | {'int': 583} |
| `chromeRendererPssKb` | {'int': 583} |
| `chromeRenderers` | {'int': 583} |
| `chromeTabs` | {'int': 583} |
| `chromeTabsProbedProfiles` | {'int': 583} |
| `chromeUtilityPssKb` | {'int': 583} |
| `desktopPssKb` | {'int': 583} |
| `hostPssKb` | {'int': 583} |
| `kind` | {'str': 583} |
| `memAvailableKb` | {'int': 583} |
| `memTotalKb` | {'int': 583} |
| `otherPssKb` | {'int': 583} |
| `processes` | {'int': 583} |
| `pssFallbackProcesses` | {'int': 583} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
