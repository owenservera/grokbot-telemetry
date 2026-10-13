# sandbox_telemetry_parse — 2026-10-13 18:53:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1191372 lines=3101
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2316 |
| `chrome_profile_sample` | 777 |
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
| `chromeBrowserPssKb` | {'int': 2316} |
| `chromeGpuPssKb` | {'int': 2316} |
| `chromeOtherPssKb` | {'int': 2316} |
| `chromeProcesses` | {'int': 2316} |
| `chromeProfiles` | {'int': 2316} |
| `chromeRendererMaxPssKb` | {'int': 2316} |
| `chromeRendererPssKb` | {'int': 2316} |
| `chromeRenderers` | {'int': 2316} |
| `chromeTabs` | {'int': 2316} |
| `chromeTabsProbedProfiles` | {'int': 2316} |
| `chromeUtilityPssKb` | {'int': 2316} |
| `desktopPssKb` | {'int': 2316} |
| `hostPssKb` | {'int': 2316} |
| `kind` | {'str': 2316} |
| `memAvailableKb` | {'int': 2316} |
| `memTotalKb` | {'int': 2316} |
| `otherPssKb` | {'int': 2316} |
| `processes` | {'int': 2316} |
| `pssFallbackProcesses` | {'int': 2316} |

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
| `cpuMillicores` | {'int': 776} |
| `display` | {'int': 777} |
| `kind` | {'str': 777} |
| `processes` | {'int': 777} |
| `pssKb` | {'int': 777} |
| `rendererMaxPssKb` | {'int': 777} |
| `renderers` | {'int': 777} |
| `tabs` | {'int': 777} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
