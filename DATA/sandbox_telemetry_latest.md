# sandbox_telemetry_parse — 2026-10-27 10:33:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=468820 lines=1040
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1035 |
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
| `chromeBrowserPssKb` | {'int': 1035} |
| `chromeGpuPssKb` | {'int': 1035} |
| `chromeOtherPssKb` | {'int': 1035} |
| `chromeProcesses` | {'int': 1035} |
| `chromeProfiles` | {'int': 1035} |
| `chromeRendererMaxPssKb` | {'int': 1035} |
| `chromeRendererPssKb` | {'int': 1035} |
| `chromeRenderers` | {'int': 1035} |
| `chromeTabs` | {'int': 1035} |
| `chromeTabsProbedProfiles` | {'int': 1035} |
| `chromeUtilityPssKb` | {'int': 1035} |
| `desktopPssKb` | {'int': 1035} |
| `hostPssKb` | {'int': 1035} |
| `kind` | {'str': 1035} |
| `memAvailableKb` | {'int': 1035} |
| `memTotalKb` | {'int': 1035} |
| `otherPssKb` | {'int': 1035} |
| `processes` | {'int': 1035} |
| `pssFallbackProcesses` | {'int': 1035} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
