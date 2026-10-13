# sandbox_telemetry_parse — 2026-10-13 08:24:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=947130 lines=2335
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1933 |
| `chrome_profile_sample` | 394 |
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
| `chromeBrowserPssKb` | {'int': 1933} |
| `chromeGpuPssKb` | {'int': 1933} |
| `chromeOtherPssKb` | {'int': 1933} |
| `chromeProcesses` | {'int': 1933} |
| `chromeProfiles` | {'int': 1933} |
| `chromeRendererMaxPssKb` | {'int': 1933} |
| `chromeRendererPssKb` | {'int': 1933} |
| `chromeRenderers` | {'int': 1933} |
| `chromeTabs` | {'int': 1933} |
| `chromeTabsProbedProfiles` | {'int': 1933} |
| `chromeUtilityPssKb` | {'int': 1933} |
| `desktopPssKb` | {'int': 1933} |
| `hostPssKb` | {'int': 1933} |
| `kind` | {'str': 1933} |
| `memAvailableKb` | {'int': 1933} |
| `memTotalKb` | {'int': 1933} |
| `otherPssKb` | {'int': 1933} |
| `processes` | {'int': 1933} |
| `pssFallbackProcesses` | {'int': 1933} |

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
| `cpuMillicores` | {'int': 393} |
| `display` | {'int': 394} |
| `kind` | {'str': 394} |
| `processes` | {'int': 394} |
| `pssKb` | {'int': 394} |
| `rendererMaxPssKb` | {'int': 394} |
| `renderers` | {'int': 394} |
| `tabs` | {'int': 394} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
