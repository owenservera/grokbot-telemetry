# sandbox_telemetry_parse — 2026-10-13 10:49:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1024135 lines=2577
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2054 |
| `chrome_profile_sample` | 515 |
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
| `chromeBrowserPssKb` | {'int': 2054} |
| `chromeGpuPssKb` | {'int': 2054} |
| `chromeOtherPssKb` | {'int': 2054} |
| `chromeProcesses` | {'int': 2054} |
| `chromeProfiles` | {'int': 2054} |
| `chromeRendererMaxPssKb` | {'int': 2054} |
| `chromeRendererPssKb` | {'int': 2054} |
| `chromeRenderers` | {'int': 2054} |
| `chromeTabs` | {'int': 2054} |
| `chromeTabsProbedProfiles` | {'int': 2054} |
| `chromeUtilityPssKb` | {'int': 2054} |
| `desktopPssKb` | {'int': 2054} |
| `hostPssKb` | {'int': 2054} |
| `kind` | {'str': 2054} |
| `memAvailableKb` | {'int': 2054} |
| `memTotalKb` | {'int': 2054} |
| `otherPssKb` | {'int': 2054} |
| `processes` | {'int': 2054} |
| `pssFallbackProcesses` | {'int': 2054} |

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
| `cpuMillicores` | {'int': 514} |
| `display` | {'int': 515} |
| `kind` | {'str': 515} |
| `processes` | {'int': 515} |
| `pssKb` | {'int': 515} |
| `rendererMaxPssKb` | {'int': 515} |
| `renderers` | {'int': 515} |
| `tabs` | {'int': 515} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
