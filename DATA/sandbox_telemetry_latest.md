# sandbox_telemetry_parse — 2026-11-28 15:08:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=936686 lines=2077
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2069 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2069} |
| `chromeGpuPssKb` | {'int': 2069} |
| `chromeOtherPssKb` | {'int': 2069} |
| `chromeProcesses` | {'int': 2069} |
| `chromeProfiles` | {'int': 2069} |
| `chromeRendererMaxPssKb` | {'int': 2069} |
| `chromeRendererPssKb` | {'int': 2069} |
| `chromeRenderers` | {'int': 2069} |
| `chromeTabs` | {'int': 2069} |
| `chromeTabsProbedProfiles` | {'int': 2069} |
| `chromeUtilityPssKb` | {'int': 2069} |
| `desktopPssKb` | {'int': 2069} |
| `hostPssKb` | {'int': 2069} |
| `kind` | {'str': 2069} |
| `memAvailableKb` | {'int': 2069} |
| `memTotalKb` | {'int': 2069} |
| `otherPssKb` | {'int': 2069} |
| `processes` | {'int': 2069} |
| `pssFallbackProcesses` | {'int': 2069} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
