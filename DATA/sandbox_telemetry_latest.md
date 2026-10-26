# sandbox_telemetry_parse — 2026-10-26 22:22:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=172974 lines=386
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 381 |
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
| `chromeBrowserPssKb` | {'int': 381} |
| `chromeGpuPssKb` | {'int': 381} |
| `chromeOtherPssKb` | {'int': 381} |
| `chromeProcesses` | {'int': 381} |
| `chromeProfiles` | {'int': 381} |
| `chromeRendererMaxPssKb` | {'int': 381} |
| `chromeRendererPssKb` | {'int': 381} |
| `chromeRenderers` | {'int': 381} |
| `chromeTabs` | {'int': 381} |
| `chromeTabsProbedProfiles` | {'int': 381} |
| `chromeUtilityPssKb` | {'int': 381} |
| `desktopPssKb` | {'int': 381} |
| `hostPssKb` | {'int': 381} |
| `kind` | {'str': 381} |
| `memAvailableKb` | {'int': 381} |
| `memTotalKb` | {'int': 381} |
| `otherPssKb` | {'int': 381} |
| `processes` | {'int': 381} |
| `pssFallbackProcesses` | {'int': 381} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
