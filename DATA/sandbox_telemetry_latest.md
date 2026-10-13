# sandbox_telemetry_parse — 2026-10-13 10:56:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1028588 lines=2591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2061 |
| `chrome_profile_sample` | 522 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2061} |
| `chromeGpuPssKb` | {'int': 2061} |
| `chromeOtherPssKb` | {'int': 2061} |
| `chromeProcesses` | {'int': 2061} |
| `chromeProfiles` | {'int': 2061} |
| `chromeRendererMaxPssKb` | {'int': 2061} |
| `chromeRendererPssKb` | {'int': 2061} |
| `chromeRenderers` | {'int': 2061} |
| `chromeTabs` | {'int': 2061} |
| `chromeTabsProbedProfiles` | {'int': 2061} |
| `chromeUtilityPssKb` | {'int': 2061} |
| `desktopPssKb` | {'int': 2061} |
| `hostPssKb` | {'int': 2061} |
| `kind` | {'str': 2061} |
| `memAvailableKb` | {'int': 2061} |
| `memTotalKb` | {'int': 2061} |
| `otherPssKb` | {'int': 2061} |
| `processes` | {'int': 2061} |
| `pssFallbackProcesses` | {'int': 2061} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 521} |
| `display` | {'int': 522} |
| `kind` | {'str': 522} |
| `processes` | {'int': 522} |
| `pssKb` | {'int': 522} |
| `rendererMaxPssKb` | {'int': 522} |
| `renderers` | {'int': 522} |
| `tabs` | {'int': 522} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
