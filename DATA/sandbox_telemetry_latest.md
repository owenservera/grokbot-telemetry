# sandbox_telemetry_parse — 2026-10-27 02:02:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=260403 lines=579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 574 |
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
| `chromeBrowserPssKb` | {'int': 574} |
| `chromeGpuPssKb` | {'int': 574} |
| `chromeOtherPssKb` | {'int': 574} |
| `chromeProcesses` | {'int': 574} |
| `chromeProfiles` | {'int': 574} |
| `chromeRendererMaxPssKb` | {'int': 574} |
| `chromeRendererPssKb` | {'int': 574} |
| `chromeRenderers` | {'int': 574} |
| `chromeTabs` | {'int': 574} |
| `chromeTabsProbedProfiles` | {'int': 574} |
| `chromeUtilityPssKb` | {'int': 574} |
| `desktopPssKb` | {'int': 574} |
| `hostPssKb` | {'int': 574} |
| `kind` | {'str': 574} |
| `memAvailableKb` | {'int': 574} |
| `memTotalKb` | {'int': 574} |
| `otherPssKb` | {'int': 574} |
| `processes` | {'int': 574} |
| `pssFallbackProcesses` | {'int': 574} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
