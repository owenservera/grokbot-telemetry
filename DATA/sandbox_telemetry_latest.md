# sandbox_telemetry_parse — 2026-10-13 03:33:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=788010 lines=1835
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1683 |
| `chrome_profile_sample` | 144 |
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
| `chromeBrowserPssKb` | {'int': 1683} |
| `chromeGpuPssKb` | {'int': 1683} |
| `chromeOtherPssKb` | {'int': 1683} |
| `chromeProcesses` | {'int': 1683} |
| `chromeProfiles` | {'int': 1683} |
| `chromeRendererMaxPssKb` | {'int': 1683} |
| `chromeRendererPssKb` | {'int': 1683} |
| `chromeRenderers` | {'int': 1683} |
| `chromeTabs` | {'int': 1683} |
| `chromeTabsProbedProfiles` | {'int': 1683} |
| `chromeUtilityPssKb` | {'int': 1683} |
| `desktopPssKb` | {'int': 1683} |
| `hostPssKb` | {'int': 1683} |
| `kind` | {'str': 1683} |
| `memAvailableKb` | {'int': 1683} |
| `memTotalKb` | {'int': 1683} |
| `otherPssKb` | {'int': 1683} |
| `processes` | {'int': 1683} |
| `pssFallbackProcesses` | {'int': 1683} |

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
| `cpuMillicores` | {'int': 143} |
| `display` | {'int': 144} |
| `kind` | {'str': 144} |
| `processes` | {'int': 144} |
| `pssKb` | {'int': 144} |
| `rendererMaxPssKb` | {'int': 144} |
| `renderers` | {'int': 144} |
| `tabs` | {'int': 144} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
